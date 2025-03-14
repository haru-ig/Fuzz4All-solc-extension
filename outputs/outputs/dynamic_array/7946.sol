pragma solidity ^0.8.0;
contract Test35 {
    struct Stuct {
        uint32 elem;
        address addr;
        mapping(address => address) map1;
        mapping(address => address) map2;
    }

    uint[] public dataStructArray;
    uint i = 0;
    address[] public addressArray;
    constructor(){
        Stuct memory o = Stuct(1, address(address(this)), map1{0x01: address(this)}, map2{0x01: address(this)});
        dataStructArray.push(o);
        o.addr = o.addr;
        o.map1[o.addr] = o.addr;
        o.map2[o.addr] = o.addr;
        i-=2;
        addressArray.push(o.addr);
        o.map1[address(this)] = address(address(this));
        o.map2[address(this)] = address(address(this));
        i-=1;
        o.map1[address(this)] = address(address(this));
        o.map2[address(this)] = address(address(this));
        i-=1;
    }

    function getTest()View returns(uint256){
        i-=1;
        Stuct memory retDataStruct = dataStructArray[i];
        return retDataStruct.elem + 1;
    }
    function getTestView()View returns(uint256, address){
        uint256 num = getTest();
        address retAddr = addressArray[i];
        uint256 retNum = num + 1;
        address retAddr2 = o.map1[retIdx];
        return (retNum, retAddr);
    }
}
