pragma solidity ^0.8.0;
interface Array3 {
    function putMinimum(uint _idx, uint _elem1, uint _elem2, uint _elem3) external;
    function putMaximum(uint _idx, uint _elem1, uint _elem2, uint _elem3) external;
    function putAverage(uint _idx, uint _elem1, uint _elem2, uint _elem3) external;
    function removeMinimum(uint _idx) external;
    function removeMaximum(uint _idx) external;
    function removeAverage(uint _idx) external;
    function extractMinimum(uint _idx) external view returns (uint, uint, uint, uint);
    function extractMaximum(uint _idx) external view returns (uint, uint, uint, uint);
    function extractAverage(uint _idx) external view returns (uint, uint, uint, uint);
}

pragma solidity ^0.8.0;
interface AddressWriter {
    address public _writerAddress;
    uint public _totalBytesWritten;
    string public _bytesWritten;
    bool public _finished;

    event finishedMessage(address sender);
    event messageWritten(address sender, uint newOffset);

    constructor(address _writerAddress) { _writerAddress; }
    function setBytesWrittenMessage(string memory _bytesWrittenMessage) public;
    function writerHasFinished() public view returns(bool);
   function writeIntoFile(string memory _bytes, uint _bytesLength) public;
}
