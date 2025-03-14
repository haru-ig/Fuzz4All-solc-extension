pragma solidity ^0.8.0;
contract NonChecked {
    constructor(address) public {
        unchecked {
            emit Checked(__);
            unchecked {
                emit Revert(__);
                unchecked {
                    return;
                }
            }
        }
    }

    function emitChecked(uint32) public pure {
        emit Checked("hello", true);
    }

    function emitRevert(uint32) public pure {
        emit Revert("hello", true);
    }
}
