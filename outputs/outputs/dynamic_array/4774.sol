pragma solidity ^0.8.0;
contract Test2 {
    uint8[4] a;
    function MutateData() public {
        a[0] = 2;
        a[1] = 20;
        a[2] = 200;
        a[3] = 10;
        a[2] = 200;
        a[0] = 10;
        a[3] = 20;
    }
}
pragma solidity ^0.6.7;
interface I {
    function mut(uint) external;
    function f(uint) external view returns(uint);
}
contract Test3 is I {
    uint8[] public b;
    function MutateData() external {
        mut(1);
        mut(2 * 10);
        mut(100);
        mut(3 * 100 + 1);
        mut(2 * 100 + 2 * 100);
        mut(((b.length - 1) * 10) + 1);
        mut(10 + 100);
        mut(20000);
        mut(100000);
    }
    function mut(uint w) public view returns(bytes memory s0) {
        s0 = new bytes(5);
        b.push(w);
    }
    function f(uint x) public view returns(uint) {
        return 4;
    }
}



interface IInterfaceIds {

    function interfaceIds() external view returns (uint256) ;
}


    function supportsInterface(uint256 interfaceId) external view returns (bool)
    {
        return interfaceIds(
