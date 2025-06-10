USING AxUnit;
USING MyLibraryWrapper;

NAMESPACE MyTest
    {TestFixture}    
    CLASS ArithmeticOfTwoNumbers
        VAR           
            cacl : Arithmometer;
            result:int;
        END_VAR
        // some test code
        {Test(1,2,'+',3)}
        {Test(2,1,'-',1)}
        {Test(2,0,'/',0)}
        METHOD  public WrapperFB 
            VAR_INPUT
                value1: INT;
                value2: INT;
                operator:CHAR;
                ret:int;
            END_VAR
            cacl(a:=value1,b:=value2,operator:=operator,result=>result);
            Assert.Equal(actual:=result, expected:=ret);
        END_METHOD        
    END_CLASS
END_NAMESPACE