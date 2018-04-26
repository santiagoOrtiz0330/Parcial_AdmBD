--------------------------------------------------------
-- Archivo creado  - miércoles-abril-25-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FIBONACCI
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FIBONACCI" (n IN NUMBER) RETURN NUMBER IS
  first number:=0;
  second number:=1;
  third number;
  i number;
begin

    for i in 2..n
    loop
        third:=first+second;
        first:=second;
        second:=third;
    end loop;
    Return third;
end;
--------------------------------------------------------
--  DDL for Function FUNCTION_1
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FUNCTION_1" (a IN NUMBER, b IN NUMBER, c IN NUMBER) RETURN VARCHAR IS
  x VARCHAR(255);
BEGIN
    IF (b >= c) THEN
      x := a || '/' || a * b || '/' || 'andres';
    ELSE
      x := a || '/' || a * b || '/' || 'martinez';
    END IF;
    Return x;
END;
--------------------------------------------------------
--  DDL for Function FUNCTION_2
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FUNCTION_2" (n IN NUMBER) RETURN NUMBER IS
  a number:=0;
BEGIN
   
    a := (2 * Fibonacci(n + 1)) - 1;
    Return a;
END;
