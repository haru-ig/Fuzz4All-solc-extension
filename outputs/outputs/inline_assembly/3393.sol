pragma solidity ^0.8.0;


contract MultiStorage {

    struct Key {
        bytes32 _key;
        address _value;
    }


    mapping(bytes32 => Key) keys;


    bytes32 public static DEFAULT_KEY = 0;


    uint internal constant _INITIAL_CAPACITY = 256;



    function keyAdd(bytes32 _key) public returns (!address) {





        keys[hashOf(_key)] = Key(_key, address(0));


        return keys[hashOf(_key)]._value;
    }




    function keyGet(bytes32 _key) public view returns (address) {



        if (address(keys[_keyToElement(_key)])) {

            return keys[_keyToElement(_key)]);
        }

        return address(0);
    }




    function keyExists(bytes32 _key) public view returns (bool) {
        return keyGet(_key)!= address(0);
    }




    function hashOf(bytes32 _key) internal pure returns (bytes32) {
        return keccak2
