pragma solidity ^0.8.0;
contract Mod14 {
    uint result;
    constructor(uint) public {
        result = mod4(35);
    }
    function mod14(uint) private returns (uint) {
        result = div13(35);
        if (result < 1774)  {
            result = div13(result);
        }
        result = mod14(result);
        return result;
    }
    function div13(uint) private returns (uint) {
        return mod13(div23(div23(div846(div123(div10098(result))))));
    }
    function div23(uint) private returns (uint) { return div23(div23(div846(div123(div10098(result)))))); }
    function div45(uint) private returns (uint) { return div45(result); }
}
