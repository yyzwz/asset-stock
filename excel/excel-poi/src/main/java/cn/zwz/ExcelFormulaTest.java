package cn.zwz;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.Test;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

public class ExcelFormulaTest {

    private final static String PATH = "D:\\";

    @Test
    public void excelFormulaTest() throws IOException {
        FileInputStream inputStream = new FileInputStream(PATH + "formula.xlsx");
        Workbook workbook = new XSSFWorkbook(inputStream);
        Sheet sheet = workbook.getSheetAt(0);
        for(int i = sheet.getFirstRowNum(); i <= sheet.getLastRowNum(); i ++) {
            Row row = sheet.getRow(i);
            Cell cell = row.getCell(0);
            String name = cell.getCellType().name();
            if(name.equals("STRING")) {
                System.out.println(cell.getStringCellValue());
            } else if(name.equals("NUMERIC")) {
                System.out.println(cell.getNumericCellValue());
            } else if(name.equals("FORMULA")) {
                System.out.println("计算公式 = " + cell.getCellFormula());
                CellValue evaluate = new XSSFFormulaEvaluator((XSSFWorkbook)workbook).evaluate(cell);
                System.out.println("计算结果 = " + evaluate.formatAsString());
            }
        }
        System.out.println("OK");
    }
}
