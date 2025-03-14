pragma solidity ^0.8.0;
interface mutatedStorageInterface {


}


















<fim_middle>contract simpleStorage {
    byte codeVersion;
    mutatedStorageInterface simpleStor;
    function set(uint _value) public {
        simpleStor.set(_value);
    }
    function get() public returns (uint) {
        return simpleStor.get();
    }
}
