pragma solidity ^0.8.0;
contract Array_view_without_new {
    function get32(uint256 _a) public view returns (uint256) {
        return _a + 8;
    }
}
contract Array_view {
    function get32(uint256 _a) public view returns (uint256) {
        Array_view_without_new arrayView = Array_view_without_new(address(this));
        Array_view_with_new arrayView2 = Array_view_with_new(address(this));
        return arrayView.get32(_a) + arrayView2.get32(_a);
    }
}
