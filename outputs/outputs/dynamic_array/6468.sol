pragma solidity ^0.8.0;
interface i {
    event d(address indexed a, uint indexed b, bool indexed c);
    function m() external returns (uint16);
}
contract c {
    constructor() {

        i aaa;
        aaa.m.value(uint16(1)).delegatecall(abi.encodeWithSignature("m()"));



        uint16[] memory abar;
        abar.push(uint16(1));
        abi.encodeWithSignature("d(address,uint256,bool)", msg.sender, 0, false);




        i bbb;
        bbb.m.value(uint16(2)).delegatecall(abi.encodeWithSelector(0x03A6, 0xCD00000000000000000000000000000000000000000000000000000000000000001A8025600FF8B51000000000000000000000000000000000000000000000000000000000000083610100000000000000000000000000000000000000000000000000080516000600150405234600060000160006002005190810190601F016020809101906104546000357c010000000000000000000000000000000000000000000000000900463ffffffff16806340b45d7b1460d15750806221f853141560b5575b60008
