pragma solidity ^0.8.0;
interface IBase {
    function setB(uint256);
    function setA(uint);
}
pragma solidity ^0.8.0;
contract Test1 {
    function setA(uint) public {
       IBase _base = 0x047718522ec3ef666d999944ec420dd8fe925844();
       _base.setA(0);
    }
    function setB(uint) public {
       IBase _base = 0x047718522ec3ef666d999944ec420dd8fe925844();
       _base.setB(0);
    }
    constructor() public {
        IBase _base = 0x047718522ec3ef666d999944ec420dd8fe925844();
        IBase _base2 = 0x047718522ec3ef666d999944ec420dd8fe925844();
        _base.setB(0);
    }
}
