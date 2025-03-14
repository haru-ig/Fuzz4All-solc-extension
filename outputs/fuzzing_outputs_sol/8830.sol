pragma solidity ^0.8.0;
contract Fallback3 {
    fallback() external payable {
        msg.data.toUint256();
    }
}


pragma solidity ^0.8.0;
contract Fallback4 {
    fallback() {
        msg.data;
        x.push();
    }
    receive() {}
}


pragma solidity ^0.8.0;
contract Fallback5 {
    fallback() external payable {
        throw;
    }
}


pragma solidity ^0.8.0;
contract Fallback6 {
    fallback() external payable {}
    receive() receive() {}
}
