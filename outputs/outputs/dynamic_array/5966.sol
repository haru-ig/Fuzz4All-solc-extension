pragma solidity ^0.8.0;
contract Test296042 {
    uint99 dataArray[3];
}



pragma solidity ^0.8.0;
contract Test296043 {
    uint99 dataArray[5];
    function getDataArray() public view returns (uint99) {
        return dataArray;
    }
    function setDataArray(uint99 data) public {
        dataArray[0] = data;
    }
    function getDataArray2() public view returns (uint99) {
        return dataArray[2];
    }
}


pragma solidity ^0.8.0;
contract Test296044 {
    uint99[] internal dataArray;
}

pragma solidity ^0.8.0;
contract Test296045 {
    uint99[] internal dataArray;
    function getStoredArray() public view returns (uint99[]) {
        return dataArray;
    }
}
