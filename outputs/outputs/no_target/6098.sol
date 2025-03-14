pragma solidity ^0.8.0;
contract Mod13 {
    uint result;
    constructor(uint) public {
        result = mod13(35);
    }
    function mod13(uint) private returns (uint) {
        result = (35 % (result + 1));
        result = (result % (result + 1));
        result = (result % (result + 1));
        result = result + (result % (result + 1));
        result = result % (result + 1);
        return result + 1;
    }
}
contract Mod13 {
    uint result;
    constructor(uint) public {
        result = mod13(35);
    }
    function mod13(uint) private returns (uint) {
        result = mod13(result);
        result = mod13(result);
        return mod13(result, 2);
    }
}
contract Mod13 {
    uint result;
    uint r;
    constructor(uint) public {
        r = 35;
        result = mod13(r);
    }
    function mod13(uint, uint) private returns (uint) {
        result = r % (r + 1);
        result = r % (r + 1);
        return r % (r + 1);
    }
}
contract Mod13 {
    uint result;
    uint r;
    constructor(uint) public {
        r = 35;
        result = mod13(r);
    }
    function mod13(uint, uint) private returns (uint) {
        result = r == r + 1? r + 1 : r % (r + 1);
        r = r == r + 1? r + 1 : 35;
        r = 35;
        return r % (35 + 1);
    }
}
