<template>
<div class="search">
    <add v-if="currView == 'add'" @close="currView = 'index'" @submited="submited" />
    <edit v-if="currView == 'edit'" @close="currView = 'index'" @submited="submited" :data="formData" />
    <Card v-show="currView == 'index'">
        <Row v-show="openSearch" @keydown.enter.native="handleSearch">
            <Form ref="searchForm" :model="searchForm" inline :label-width="70">
                <Form-item label="资产名称" prop="assetName">
                    <Input type="text" v-model="searchForm.assetName" placeholder="请输入资产名称" clearable style="width: 200px" />
                </Form-item>
                <Form-item label="领用人" prop="recipients">
                    <Input type="text" v-model="searchForm.recipients" placeholder="请输入领用人" clearable style="width: 200px" />
                </Form-item>
                <Form-item style="margin-left:-35px;" class="br">
                    <Button @click="handleSearch" size="small" ghost type="success" icon="ios-search">搜索</Button>
                    <Button @click="handleReset" size="small" ghost type="warning" icon="md-refresh">重置</Button>
                    <Button @click="getDataList" size="small" ghost type="success" icon="md-refresh">刷新</Button>
                </Form-item>
            </Form>
        </Row>
        <Row>
            <Table :loading="loading" border stripe :height="height" :columns="columns" :data="data" ref="table" sortable="custom" @on-sort-change="changeSort" @on-selection-change="changeSelect"></Table>
        </Row>
        <Row type="flex" justify="end" class="page">
            <Page :current="searchForm.pageNumber" :total="total" :page-size="searchForm.pageSize" @on-change="changePage" @on-page-size-change="changePageSize" :page-size-opts="[10, 20, 50]" size="small" show-total show-elevator show-sizer></Page>
        </Row>
    </Card>
</div>
</template>

<script>
import {
    getWarehouseOutList,
    deleteWarehouseOut,
    returnFx
} from "./api2.js";
import add from "./add2.vue";
import edit from "./edit2.vue";
export default {
    name: "single-window",
    components: {
        add,
        edit,
    },
    data() {
        return {
            openSearch: true,
            formData: {},
            currView: "index",
            loading: true,
            searchForm: {
                pageNumber: 1,
                pageSize: 10,
                sort: "createTime",
                order: "desc",
                nature: "耗材",
            },
            selectList: [],
            selectCount: 0,
            columns: [{
                    type: "selection",
                    width: 60,
                    align: "center",
                },
                {
                    type: "index",
                    width: 60,
                    align: "center",
                },
                {
                    title: "资产名称",
                    key: "assetName",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "领用人",
                    key: "recipients",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "型号",
                    key: "model",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "单价",
                    key: "unitPrice",
                    minWidth: 120,
                    sortable: true,
                },
                {
                    title: "数量",
                    key: "number",
                    minWidth: 120,
                    sortable: true,
                },
                {
                    title: "审核状态",
                    key: "auditStatus",
                    minWidth: 200,
                    sortable: true,
                    render: (h, params) => {
                        if (params.row.auditStatus == 1) {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#3CB371",
                                        },
                                    },
                                    "已于" + params.row.auditTime + "完成审核"
                                ),
                            ]);
                        } else if (params.row.auditStatus == 2) {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#ff9900",
                                        },
                                    },
                                    "已于" + params.row.auditTime + "被驳回"
                                ),
                            ]);
                        } else {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#ff0000",
                                        },
                                    },
                                    "未审核"
                                ),
                            ]);
                        }
                    },
                },
                {
                    title: "备注",
                    key: "remarks",
                    minWidth: 120,
                },
                {
                    title: "操作",
                    key: "action",
                    align: "center",
                    width: 200,
                    fixed: "right",
                    render: (h, params) => {
                        var that = this;
                        return h("div", [
                            h(
                                "Button", {
                                    props: {
                                        type: "error",
                                        size: "small",
                                        ghost: true,
                                        icon: "ios-create-outline",
                                        disabled: (params.row.auditStatus > 0)
                                    },
                                    on: {
                                        click: () => {
                                            this.auditFx(params.row);
                                        },
                                    },
                                },
                                "审核"
                            ),
                        ]);
                    },
                },
            ],
            data: [],
            pageNumber: 1,
            pageSize: 10,
            total: 0,
            height: 510
        };
    },
    methods: {
        init() {
            this.getDataList();
        },
        auditFx(e) {
            var that = this;
            returnFx({
                id: e.id
            }).then(res => {
                if (res.success) {
                    that.getDataList();
                    this.$Message.success("审核成功");
                }
            })
        },
        submited() {
            this.currView = "index";
            this.getDataList();
        },
        changePage(v) {
            this.searchForm.pageNumber = v;
            this.getDataList();
            this.clearSelectAll();
        },
        changePageSize(v) {
            this.searchForm.pageSize = v;
            this.getDataList();
        },
        handleSearch() {
            this.searchForm.pageNumber = 1;
            this.searchForm.pageSize = 10;
            this.getDataList();
        },
        handleReset() {
            this.$refs.searchForm.resetFields();
            this.searchForm.pageNumber = 1;
            this.searchForm.pageSize = 10;
            this.getDataList();
        },
        changeSort(e) {
            this.searchForm.sort = e.key;
            this.searchForm.order = e.order;
            if (e.order === "normal") {
                this.searchForm.order = "";
            }
            this.getDataList();
        },
        clearSelectAll() {
            this.$refs.table.selectAll(false);
        },
        changeSelect(e) {
            this.selectList = e;
            this.selectCount = e.length;
        },
        getDataList() {
            this.loading = true;
            getWarehouseOutList(this.searchForm).then((res) => {
                this.loading = false;
                if (res.success) {
                    this.data = res.result.records;
                    this.total = res.result.total;
                }
            });
        },
        add() {
            this.currView = "add";
        },
        edit(v) {
            for (let attr in v) {
                if (v[attr] == null) {
                    v[attr] = "";
                }
            }
            let str = JSON.stringify(v);
            let data = JSON.parse(str);
            this.formData = data;
            this.currView = "edit";
        },
        remove(v) {
            this.$Modal.confirm({
                title: "确认删除",
                content: "您确认要删除  ?",
                loading: true,
                onOk: () => {
                    deleteWarehouseOut({
                        ids: v.id
                    }).then((res) => {
                        this.$Modal.remove();
                        if (res.success) {
                            this.$Message.success("操作成功");
                            this.getDataList();
                        }
                    });
                },
            });
        },
        delAll() {
            if (this.selectCount <= 0) {
                this.$Message.warning("您还未选择要删除的数据");
                return;
            }
            this.$Modal.confirm({
                title: "确认删除",
                content: "您确认要删除所选的 " + this.selectCount + " 条数据?",
                loading: true,
                onOk: () => {
                    let ids = "";
                    this.selectList.forEach(function (e) {
                        ids += e.id + ",";
                    });
                    ids = ids.substring(0, ids.length - 1);
                    deleteWarehouseOut({
                        ids: ids
                    }).then((res) => {
                        this.$Modal.remove();
                        if (res.success) {
                            this.$Message.success("操作成功");
                            this.clearSelectAll();
                            this.getDataList();
                        }
                    });
                },
            });
        },
    },
    mounted() {
        this.height = window.innerHeight - this.$refs.table.$el.offsetTop - 210;
        this.init();
    },
};
</script>

<style lang="less">
.search {
    .operation {
        margin-bottom: 2vh;
    }

    .select-count {
        font-weight: 600;
        color: #40a9ff;
    }

    .select-clear {
        margin-left: 10px;
    }

    .page {
        margin-top: 2vh;
    }

    .drop-down {
        margin-left: 5px;
    }
}
</style>
