pragma solidity ^0.8.0;
contract MutatedSolidity8To14b {
    uint8 arrayA_1990000000;
    uint256 arrayA_259FC3BEEBEB6EE376B01239CA98C38518F10B4E000000000000000000000000000000000000000000000000000000000000000000000000000000001;
    function mutatedVariable(uint256 num) public returns (uint256) {
        uint8 _tmp = num.toUint8;
        _tmp.fromUint256(_tmp);
        return num + num;
    }
    function notmutatedFunction(uint num) public returns (uint256) {
        return num + num;
    }
}





pragma solidity ^0.8.0;


interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {
