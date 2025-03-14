pragma solidity ^0.8.0;
contract ModifiesPreviousGeneration {
    uint12 num = 1;
    constructor () public {
        num += 1;
    }
    function set(uint n) public {
        emit Log(num, "", "");
        num += n;
    }
    event Log(uint value, string data, string data2);
}
contract Example1 {
    uint16 num = 10;
    uint16 val1 = 1000;
    function set() public {
        require(num >= val1);
        num = 20;
    }
    event Log(uint value);
}
contract Example2 is ModifierExample1, ModifierExample2 {
    uint16 num = 200;
    uint8 val2 = 111;

    function set() public {
        require(num > val2);
        num = 255;
    }
    event Log(uint value);
}
contract ModifierExample1 is SemanticallyEquivalentM25 {
    function modifierSemanticallyEquivalentM25() internal {
        return;
    }
    function modifierSemanticallyEquivalentM26() public {
        return;
    }
}

contract ModifierExample2 is SemanticallyEquivalentM16 {
    function modifierSemanticallyEquivalentM25() internal {
        return;
    }



}

pragma solidity ^0.8.0;
import "./ModifierExample1.sol";
import "./ModifierExample2.sol";
contract ExampleAndModifierContract {
    uint16 num = 200000000000;
    uint8 val = 111;

    function set() public {
        require(num < val);
        uint16 old = num;
        num += val;
        require(num >= old);
    }









    event Log(uint value);
}
contract ExampleAndModifierResult {
    string data1 = '';
    string data2 = '';
    modifier Example_SemanticallyEquivalentM25() internal {
    }
    modifier Example_SemanticallyEquivalentM26() public {
    }
    function ExampleAndModifier() public {
        set();
        Example_SemanticallyEquivalentM
