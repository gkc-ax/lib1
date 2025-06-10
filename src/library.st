NAMESPACE gkc.math
    CLASS PUBLIC MyMath
        METHOD  PUBLIC Arithmometer : INT
            VAR_INPUT
                a : INT;
                b : INT;
                operator : CHAR;
            END_VAR
            CASE operator OF
                '+': Arithmometer:=a+b;
                '-': Arithmometer:=a-b;
                '*': Arithmometer:=a*b;
                '/': Arithmometer:=a/b;
            ELSE
                Arithmometer:=0;
            END_CASE;            
        END_METHOD
    END_CLASS
END_NAMESPACE

