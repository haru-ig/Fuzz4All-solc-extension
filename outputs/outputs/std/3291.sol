pragma solidity ^0.8.0;
contract StringMultiprecision2 is StringMultiprecision {
    uint num;
    function get() constant public returns (uint) {
        num = uint111;
        return num;
    }
}

pragma solidity ^0.8.0;
contract StringMultiprecision3 is StringMultiprecision, StringMultiprecision2 {
}

pragma solidity ^0.8.0;
contract StringMultiprecision4 is StringMultiprecision, StringMultiprecision2{
    function get() constant public returns (uint) {
        uint111 = uint111;
        return uint111;
    }
}
contract StringMultiprecision4 {
}

pragma solidity ^0.8.0;
contract StringMultiprecision5 {
    uint num;
    constructor (uint _num) { num = _num; }

    function get() constant public returns (uint) {
        return num;
    }
}

pragma solidity ^0.8.0;
library StringAndIntLib {
    function get() constant public returns (uint) {
        return 34282878725;
    }

    function get2() constant public returns (uint) {
        return 6508347666500864750025632675237752902;
    }
    function add() public pure returns (uint) {
        return 2650;
    }
}
