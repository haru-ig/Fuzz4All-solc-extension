pragma solidity ^0.8.0;


pragma solidity ^0.8.0;
address payable owner;
contract Array {
    struct ArrayItem {
        uint data;
    }
    ArrayItem[] public arr;
    address public ownerAddress;
}

pragma solidity ^0.8.0;
contract Memory {
    Array.ArrayItem[] public itemData;
    function getMem() public view returns (Array.ArrayItem memory){
        Array.ArrayItem memory returnedArrayItem;
        returnedArrayItem.data = 129716;
        return returnedArrayItem;
    }
    function getLocal() public pure returns (Array.ArrayItem.data storage){
        return itemData[1255066];
    }
}
