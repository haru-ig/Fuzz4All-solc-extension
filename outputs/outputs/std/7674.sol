pragma solidity ^0.8.0;
contract EquivalentGoodCase14 is EquivalentGoodCase13 {
    constructor(uint8 a) EquivalentGoodCase13 { m = a; }
    function useM(uint8 _newM) public { m = _newM; }
    function getM() public view returns (uint8 m_var) { return m; }
}
