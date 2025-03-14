pragma solidity ^0.8.0;
contract OldSemanticsFallbackMutatingReceiving {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external {}
}
contract NewSemanticsFallbackMutatingNonpayable {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
}

pragma solidity ^0.8.0;
contract OldSemanticsFallbackWithMutations {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    function set2(uint256 _v) internal { value = _v; }
}
contract NewSemanticsFallbackWithMutationsPayable {
    uint256 internal value;
    uint256 internal oldValue;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) internal { value = _v; }
    receive() external payable {}
    function set2(uint256 _v) internal { value = _v; }
}
contract Programmer {
    event Log(string message);
    function log(string memory s) internal { emit Log(s); }
    OldSemanticsFallbackWithMutations fallbackMut;

    OldSemanticsFallback fallbackOld;

    NewSemanticsFallbackWithMutations payableFallbackMutating;
    event SetLog(string message);
    function setLog(string memory s) internal { emit SetLog(s); }
    NewSemanticsFallbackWithMutations NonpayableFallbackMutating;

    NewSemanticsFallbackWithMutations payableFallbackMutatingReceiving;
    event SetLogReceiving(string message);
    function setLogReceiving(string memory s) internal { emit SetLogReceiving(s); }
    NewSemanticsFallbackWithMutations NonpayableFallbackMutatingReceiving;

    NewSemanticsFallbackWithMutations PayableFallbackMutating;
    event SetLogPayableReceiving(string message);
    function setLogPayableReceiving(string memory s ) internal {
