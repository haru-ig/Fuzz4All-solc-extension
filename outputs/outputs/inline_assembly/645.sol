pragma solidity ^0.8.0;
contract Mutator {
    function testMethod(int v) public pure {
        string memory m;
        assembly {
            m := m + "Hello";
        }
        (string memory memoryResult) = bytesToStringStorage(m);
        assembly {
            v := v + 1;
        }

    }



    function bytesToStringStorage(bytes calldata inputBytes) internal pure returns (string memory memoryResult) {

        uint256 length = inputBytes.length;
        bytes memory inputData = inputBytes;





        length = bytesToString(inputData, length);



        require(length < 256, "Cannot store more than 256 characters.");


        storageResult := new bytes(256);


        bytes memory bytesResult = storageResult;
        for (uint256 i = 0; i < length; i++) {
            bytesResult[i] = inputData[i];
        }






        bytes memory memoryResult = bytesToString(bytesResult, length);
        storageResult = memoryResult;
    }


    function bytesToString(bytes memory data, uint256 length) internal pure returns (uint256) {
        uint256 i;
        uint256 count = 0;
        for (i = 0; i < length; i++) {
            if (i!= length - 1) {
                count += (uint256(data[i]) & 0xFF);
            }
            else {
                count += uint256(data[i]);
