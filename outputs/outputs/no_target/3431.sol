pragma solidity ^0.8.0;
contract m01 {
    function M1(address _a) public {
    }
    mapping (address=>bool) private _wotCats;
    function M2(address _a) private view {

        _wotCats[_a] = true;
    }
}
