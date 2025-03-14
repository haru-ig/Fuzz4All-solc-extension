pragma solidity ^0.8.0;
contract B {
    uint alphabet = 0;
    uint names_id = 0x4;
    uint names2_id = 0x5;
    uint namelength = 0x6;
    function create() public {
        call_create();
        (names_id, names2_id) = (0x7, 8);
        (names_id, names2_id) = (0x7, 8);
    }
    function call_create() public {

        create();
    }
}

pragma solidity ^0.8.0;
contract A {
    uint alphabet = 0;
    uint names_id = 0;
    uint names2_id = 0;
    uint namelength = 0;
    function print_name_map() public pure returns (bytes32[]){
        bytes32[] memory nameList;
        nameList.push(names_id);
        nameList.push(names2_id);
        nameList.push(namelength);
        return nameList;
    }
}

contract B {

    function create_mutated(uint _names_id, uint _names2_id, uint _namelength) public {
        A myContract = new A();
        _names_id = myContract.names_id;
        _names2_id = myContract.names2_id;
        _namelength = myContract.namelength;
        A myContract2 = new A();
        myContract.names_id = myContract2.names_id;
        myContract.names2_id = myContract2.names2_id;
        myContract2.names_id = _names_id;
        myContract2.names2_id = _names2_id;
        myContract.namelength = _namelength;
    }
}
