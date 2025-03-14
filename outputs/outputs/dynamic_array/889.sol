pragma solidity ^0.8.0;
contract Replacement1 {
    function x() public view returns (uint) {
        return 7500;
    }
}

pragma solidity ^0.8.0;
contract Replacement2 {
    function x() public view returns (uint) {
        mapping (uint => uint) storage y = mapping(uint => uint);
        y ;
        y[123] ;
        return 87393;
    }
}
contract Replacement3 {
    function x() public view returns (uint) {
        mapping (uint => uint) storage y = mapping(uint => uint);
        y[123] = 42;
        return 73742;
    }
}
contract Replacement4 {
    function x() public view returns (uint) {
        mapping (uint => uint) storage y = mapping(uint => uint);
        y[123] = 42;
        mapping (uint => uint) storage z;
        z ;
        y;
        return 10;
    }
}
