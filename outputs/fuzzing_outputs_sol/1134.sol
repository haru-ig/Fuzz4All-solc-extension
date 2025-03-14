pragma solidity ^0.8.0;
contract SimpleMutation2 {
    function simpleMutation() public {
        revert();
    }
    fallback() external pure {}
}

library Console {
    uint public lastCallIndex;
    bool private _isVerbose;
    event Log(uint indexed index, string message);
    function verbose(bool verbose) public {
        Log(lastCallIndex, address(this).toString());
        _isVerbose = verbose;
    }
    function verbose(bool enable, bool verbose) public {
        if (_isVerbose == enable) {
            return;
        }
        verbose(verbose);
    }

    function log(string memory message) {
        lastCallIndex += 1;
        _print(lastCallIndex, message);
    }


    function _print(uint index, string memory message) {
        if (_isVerbose) {
            uint timeStamp = block.timestamp;
            if (block.timestamp - timeStamp >= 1 minute) {
                address owner = msg.sender;
                owner.transfer(1 wei);
            }
            require(index == lastCallIndex);

            uint codeSize = (uint(codeSize(msg.sender))) / 1024;

            uint balance = address(this).balance;
            emit Log(index, string(abi.encodePacked("[Log]: ", msg.sender, ": ", msg.data, ": ", codeSize, " kB code", ": ", balance, " ETH balance")));
            lastCallIndex += 1;
        }
    }
}
