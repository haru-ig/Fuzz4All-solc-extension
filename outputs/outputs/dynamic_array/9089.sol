pragma solidity ^0.8.0;
contract Comparable {
    IAddressable public addr1;
    uint256 public x;
    constructor (IAddressable addr1_) public {
        x = addr1_.revert(17);
        addr1 = addr1_;
    }
    function equals(uint256 val) public returns(bool){
        return addr1.equals(val);
    }
}



pragma solidity ^0.8.0;
interface IAddressable {
    function equals(uint256 val) public returns(bool);
}
contract Comp1{
    IAddressable public addr1;
    constructor(IAddressable addr1_) public {
        addr1 = addr1_;
    }
    function compareState(IAddressable addr2) public returns(address state){
        state = addr1.equals(addr2.equals(17));
    }
}
contract Comp2 is Comp1{
    constructor(IAddressable addr1_) public {
    }
    function compareState(IAddressable addr2) public returns(address state){
        state = addr1.equals(addr2.equals(17));
    }
}
contract CompareTest {

    uint256 public constant returnsNum = 5;
    function runTest(uint256 a) public {
        IAddressable addr1 = new Comparable();
        address state = addr1.equals(a);
        IAddressable addr12 = new Comp1(addr1);
        address state2 = addr12.compareState(addr12);
    }
}
pragma solidity ^0.8.0;
contract ArrayComp {
    uint32[256] public arr;
    function get() public {
        uint x = arr[uint(10)];
        (x, ) = (uint(x), ( ));
    }
}
contract ArrayComp2 {
    uint[] arr;
