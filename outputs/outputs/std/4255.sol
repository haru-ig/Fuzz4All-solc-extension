pragma solidity ^0.8.0;
interface IConvert {
    function toString(uint256 val) external pure returns (string memory);
    function toInt(string memory s) external pure returns (uint256);
}

pragma solidity ^0.8.0;
contract Math {
    bool private constant LOGGING = true;

    struct Log {
        string message;
        uint256 timeElapsed;
    }

    uint256[] private logs;
    Log private log;

    constructor() {
        if (LOGGING) {
            log.timeElapsed = block.timestamp - now;
            logs.push(log);
        }
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= 2**256 - 1);
        return a + b;
    }


    function now() public pure returns (uint256) {
        return block.timestamp * 1000 + getTimestamp() - Date.utc("2001-01-01");
    }


    function getTimestamp() public pure returns (uint256) {
        return block.timestamp;
    }


    function log(string memory message) public {
        if (LOGGING) {
            log.timeElapsed = block.timestamp - now;
            log.message = message;
            logs.push(log);
        }
    }


    function getLastTimestampLog() public view returns (uint256) {
        require(logExists());
        return log.timeElapsed;
    }


    function getLogName() public view returns (string memory){
        require(logExists());
        return log.message;
    }


    function logExists() public view returns (bool) {
        return logs.length > 0;
    }


    function logExistsPrevious() public view returns (bool) {
        return
