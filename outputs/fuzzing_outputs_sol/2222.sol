pragma solidity ^0.8.0;
contract Mutater_no5 {
    mapping(uint256=>address) public _map;
    constructor() {
        _map;
    }
    function testfallback(uint256 _id) external{
        address to = _this();
        for(uint256 i = 0; i < 30; i++){
            to.call.value(1)();
        }
    }
    function testfallback2() public {
        address to = _this();
        _map[1] = to;
        to.call();

        address(uint256(uint120(to))).call.value(99999)();
    }

    function _this() private view returns (address){

    }
}
