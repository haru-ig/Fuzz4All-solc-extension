pragma solidity ^0.8.0;
contract NonStandardComplexStruct{
    uint256 public eip;
    uint256 public fep;
    uint256 public gep;
    uint256 public hep;
    function NonStandardComplexStruct(uint256 elemEip, uint256 elemFep, uint256 elemGep, uint256 elemHEP){
        eip = elemEip;
        fep = elemFep;
        gep = elemGep;
        hep = elemHEP;
    }
}
