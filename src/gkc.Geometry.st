NAMESPACE gkc.Geometry
    // Shape 接口
    // 定义calculateArea 方法，返回类型为 LREAL
    INTERFACE Shape
        METHOD calculateArea : LREAL END_METHOD
    END_INTERFACE
    
    // Circle 类 
    // 继承Shape 接口
    // 定义公共变量 radius 和常量 PI
    // 实现 calculateArea 方法
    // 提供了 initialize 方法用于初始化
    CLASS Circle IMPLEMENTS Shape
        VAR PRIVATE
            radius: LREAL;
        END_VAR
        VAR CONSTANT
            PI : LREAL:=3.1415;
        END_VAR
        METHOD PUBLIC initialize
            VAR_INPUT
                radius:LREAL:=10.0;
            END_VAR
            this.radius:=radius;
        END_METHOD
        METHOD PUBLIC calculateArea : LREAL
            calculateArea:=radius * radius * PI;            
        END_METHOD
    END_CLASS    

    // Polygon 抽象类 
    // 继承Shape接口
    // 包含私有变量 sides
    // 定义抽象方法 calculateArea
    // 公共方法 getSides
    // 受保护方法 setSides
    CLASS ABSTRACT Polygon IMPLEMENTS Shape
        VAR PRIVATE
            sides : int;
        END_VAR
        METHOD PUBLIC ABSTRACT calculateArea : LREAL END_METHOD
        METHOD PUBLIC getSides : Int
            getSides:=sides;
        END_METHOD       
        METHOD PROTECTED setSides
            VAR_INPUT
                sides:int;
            END_VAR            
            this.sides:=sides;
        END_METHOD      
    END_CLASS

    // Triangle 类继承自 Polygon
    // 含私有变量 base 和 height
    // 提供了 initialize 方法用于初始化
    // 重写了 calculateArea 方法
    CLASS Triangle EXTENDS Polygon
        VAR PRIVATE
            base : LREAL;
            height : LREAL;            
        END_VAR
        METHOD PUBLIC initialize
            VAR_INPUT
                base:LREAL:=10.0;
                height:LREAL:=5.0;
            END_VAR
            SUPER.setSides(3);
            this.base:=base;
            this.height:=height;
        END_METHOD
        METHOD PUBLIC OVERRIDE calculateArea : LREAL
            calculateArea := base * height / 2;             
        END_METHOD
    END_CLASS

    // Square 类继承自 Polygon
    // 包含私有变量 sideLength
    // 提供 initialize 方法用于初始化
    // 重写 calculateArea 方法
    CLASS Square EXTENDS Polygon
        VAR PRIVATE
            sideLength : LREAL;         
        END_VAR
        METHOD PUBLIC initialize
            VAR_INPUT
                sidelength:LREAL:=25.0;
            END_VAR
            SUPER.setSides(4);
            this.sideLength:=sideLength;
        END_METHOD
        METHOD PUBLIC OVERRIDE calculateArea : LREAL
            calculateArea := sideLength * sideLength;             
        END_METHOD        
    END_CLASS
END_NAMESPACE