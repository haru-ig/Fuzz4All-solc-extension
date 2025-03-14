pragma solidity ^0.8.0;
contract MutantArithmatic49
{
    uint8 x;
    bytes2 a;
    function Get() public {
        z = 1;
        while (true) {
            if (z % 2 == 0){
                print("Divisor found\n");
            } else {
                print("No divisor found\n");
            }
            {
                x = (1 + 2) - (x + 1);
            }
            print("x after x++;: ", x);
            x = (2 * 1) + (32 / 1);
            print("x after 2*(x+1 + 1): ", x);
            x = (x + 2) - (x + 1 * 1);
            print("x after x--;: ", x);
            x = (x / 32) + 12;
            print("x after x /= 1.51: ", x);
            s = 7 + (x % 21);
            print("s after x%=8+4+4: ", s);
            s = (s * 1 + 4) * (x * x / 1) + s / 33;
            print("s after (s * 1 + 4) + s/33=", s);
            a = "";
            a += "+";
            a += "+";
            a += "+";
            a += "+";
            a += "+";
            a += "+ 12";
            a = a.trim();
            print("a=", a);
            x = uint256(0x00);
            s = 3 * (4 + 0x80);
            z = 2 * uint8(10);
            print("Printed results (49):\n");
        }
    }

    function mutant_add() public{
        if (s/7 > 1){
            mutant_mul();
        }
        mutant_mult();
        mutant_div();
    }
    function mutant_mult() public{
        c = s * 7;
        print("result mutant_mult(1): ", c);
    }
    function mutant_div() public{
        c = 5 / 1;
        print("result mutant_div(1): ", c);
    }
    function mutant_mul() public{
        c = 1 / (3);
        print("result mutant_mult(2): ", c);
    }
    }
