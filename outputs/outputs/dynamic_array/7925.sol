pragma solidity ^0.8.0;



contract ArrayTest {
    constructor(string memory _s) public {
        ids.push("my_test_array_"+_s);
    }


    function get0() public view returns (bytes32 v) {
        v = ids[0];
    }


    function getIds() public view returns(bytes32[] storage v) {
        v = ids;
    }


    function set10() public {
        ids[_ids.length * 20 + 10] = "this is my appended text";
    }


    function modIdByIndex1() public {
        for (uint i = 0; i < ids.length; i++) {
            ids[i + 10] = byte(ids[i]);
        }
    }

    function id1() public {
        ids[0] = 1;
    }


    function setRandomIds(uint _n) public {
        for (uint i = 0; i < _n; i++) {
            ids[i] = uint32(_i % ids.length);
        }
    }


    function twoByteArrays(bytes32[] memory _ids) public view returns(bytes2[] memory, bytes32[] memory) {
        bytes[] memory bytes1;
        bytes[] memory bytes2;
        bytes1 = new bytes[](_ids.length / 2);
        bytes2 = new bytes[](_ids.length / 2);
        for(uint i = 0; i < _ids.length; i++) {
            bytes1[i / 2] = bytes(_ids[i / 2]);
            bytes2[i / 2] = bytes(_ids[i / 2 + 1]);
        }
        return (bytes1,bytes2);

    }
}
