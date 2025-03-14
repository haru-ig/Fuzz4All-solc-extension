pragma solidity ^0.8.0;
contract modifierD{
    uint m;
    modifierG(uint x) {
        m = x;
    }
    modifierH(uint x) view public returns (uint) {
        m = x;
        return x;
    }
}
contract myContractD is modifierD, modifierH {
    function g(uint x) public view returns (uint) {
        return m + x;
    }
    function h(uint x) public view returns (uint) {
        return x;
    }
}
