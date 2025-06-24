USING gkc.math;
NAMESPACE MyLibraryWrapper
    FUNCTION_BLOCK Arithmometer
        VAR_INPUT 
            a,b:int;
            operator: CHAR;
        END_VAR
        VAR_OUTPUT
            result:INT;
        END_VAR
        VAR
            math : MyMath;
        END_VAR
        result := math.Arithmometer(a,b,operator);
    END_FUNCTION_BLOCK
END_NAMESPACE