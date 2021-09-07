package cn.zwz;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.Test;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class PoiXssfTest {

    private final static String PATH = "D:\\";

    @Test
    public void poiXssfWrite() throws IOException {
        // 创建Excel
        Workbook workbook = new XSSFWorkbook();
        // 创建Sheet
        Sheet sheet = workbook.createSheet("花名册档案");
        // 创建行
        Row row = sheet.createRow(0);
        // 创建单元格
        Cell cell1 = row.createCell(0);
        Cell cell2 = row.createCell(1);
        Cell cell3 = row.createCell(2);
        Cell cell4 = row.createCell(3);
        // 写值
        cell1.setCellValue("姓名");
        cell2.setCellValue("工号");
        cell3.setCellValue("性别");
        cell4.setCellValue("地址");
        for(int i = 1 ; i <= 65535 ; i ++) {
            // 再插入一行数据
            row = sheet.createRow(i);
            cell1 = row.createCell(0);
            cell2 = row.createCell(1);
            cell3 = row.createCell(2);
            cell4 = row.createCell(3);
            cell1.setCellValue("员工" + i);
            cell2.setCellValue("ZWZ" + i);
            cell3.setCellValue(i % 2 == 1? "男" : "女");
            cell4.setCellValue("测试地址" + i);
        }
        // 生成文件
        FileOutputStream fileOutputStream = new FileOutputStream(PATH + "test.xlsx");
        workbook.write(fileOutputStream);
        fileOutputStream.close();
        System.out.println("OK");
    }

    @Test
    public void poiHssfRead() throws IOException {
        FileInputStream inputStream = new FileInputStream(PATH + "test.xlsx");
        Workbook workbook = new XSSFWorkbook(inputStream);
        Sheet sheet = workbook.getSheetAt(0);
        for(int i = sheet.getFirstRowNum(); i <= sheet.getLastRowNum(); i ++) {
            Row row = sheet.getRow(i);
            for(int j = row.getFirstCellNum(); j <= row.getLastCellNum() - 1; j ++) {
                String cellType = row.getCell(j).getCellType().name();
                System.out.print("[" + cellType + "]" + row.getCell(j) + "\t");
            }
            System.out.println();
        }
    }
}
