pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
    uint[][] public semanticallyEquivalent1;
    uint[][] public semanticallyEquivalent3;
    uint[] public semanticallyEquivalent2Copy;
    uint[] public semanticallyEquivalent3Copy;
    uint public semanticallyEquivalent2Modify;
    uint public semanticallyEquivalent3Modify;
    uint public storageSize;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent3 {
    uint[] public storage;
    uint[] public storageCopy;
    uint public storageModify;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
    uint public storage1;
    mapping(uint =>uint[]) public storage2;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {
    uint public storage1;
    mapping(uint =>uint[]) public storage2;
    function GetStorage(uint k) public view returns (uint[] memory){
        return storage2[k];
    }
    function ChangeStorage(uint k, uint[] memory a) public view returns (uint[][] memory){
        storage2[k] = a;
        return storage2[k];
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {
    uint public storage1;
    mapping(uint =>uint[]) public storage2;
    function GetStorage(uint k) public view returns (uint[] memory){
        return storage2[k];
    }
    function ChangeStorage(uint k, uint[] memory a) public view returns (uint[][] memory){
        publicView1;
        storage2[k] = a;
        return storage2[k];
    }
    uint[] public publicView1;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
    uint constant storage1 = 59;
    uint[] storage2;
}

pragma solidity ^0.8.0;
contract
