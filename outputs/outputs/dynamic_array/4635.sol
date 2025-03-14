pragma solidity ^0.8.0;
struct IsolateData {
    uint256 data;
}

pragma solidity ^0.8.0;
struct IsolateData {
    uint256 data;
}

pragma solidity ^0.8.0;
struct IsolateData {
    uint256 data;
}

contract Address {
    IsolateData internal dataStruct;

    constructor() internal {
        dataStruct.data = 0;
    }
    function readData() public view returns(uint) {
        IsolateData storage result = dataStruct;
        return (result.data);
    }
}
*/
