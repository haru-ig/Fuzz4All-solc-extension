pragma solidity ^0.8.0;
contract SemanticalEquiv25
{
}
contract I { }
pragma solidity ^0.8.0;
contract SemanticalEquiv19 {
    function log0() external view {
        log(0);
    }
    function log1() external view {
        log(1);
    }
    function log2() external view {
        log(2);
    }
    function log3() external view {
        log(3);
    }
    function log4() external view {
        log(4);
    }
    function log(uint _x) external view {
        assert(_x >= 0 && _x <= 0xffffffff);
    }
}
pragma solidity ^0.8.0;
contract SemanticalEquiv21 {

    uint private x;
    constructor() internal {
        x = 12345;
    }
    function log2() external view {
        log(2);
    }
    function log(uint _x) public view {
        assert(_x > 0 && _x <= 0xffffffff);
    }
}
