pragma solidity ^0.8.0;
contract Mutator {
    uint public immutable number_;
    uint public stored_;
    constructor () {
        number_ = 123;
    }

    function mutate() public mutates {

        stored_ += 2_000_000_000;
    }
    function readStored() public view returns (uint) {
        return stored_;
    }
    function readNumber() public view returns (uint) {
        return number_;
    }
}


pragma solidity ^0.8.0;
function readUint(string memory file) public view returns (uint) {
    uint stored_;
    uint lastIndex = file.length;
    if (lastIndex!= 0) {
        uint size = lastIndex - 1;
        while (size > 0 && file[size - 1]!= '\n' && file[size - 1]!= '\r') {
            size--;
        }
        lastIndex -= size;
        stored_ = uint(uint256(uint8(file[lastIndex])));
        while (lastIndex < file.length && file[lastIndex]!= '\n' && file[lastIndex]!= '\r') {
            lastIndex++;
        }
    }

}


pragma solidity ^0.8.0;
function readUint(string memory file) public view returns (uint) {
    return uint(uint256(uint8(file[file.length - 1]))));
}


pragma solidity ^0.8.0;
contract Random {
    uint8 x_;
    constructor() {

    }
    function write(uint8 value) public {
        x_ = value;
    }
    function read() public public pure returns (uint8) {
        return x_;
    }
}


pragma solidity ^0.8.0;
contract Random {
    uint8 x_;
    constructor() {

    }
    function write(uint8 value) public {
        x_ = value;
    }
    function read() public public pure returns (uint
