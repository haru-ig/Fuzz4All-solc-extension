pragma solidity ^0.8.0;
contract ModifierEquivalenceMutated2 {
        struct Extra { uint w; }
        Extra internal extra;
        function extra() public returns (Extra memory) {
                return extra;
        }
        function extra(uint w0) public {
                extra.w = w0;
        }
        function run() public {
                uint extraValue = extra.w + 1;
        }
}

pragma solidity >=0.6.10;
address payable internal fallback(uint w0) {
        print("EIP712 hash: " + bytes32(abi.encode(address(this), w0)));
        uint extraValue = w0 + 2;
        self.transfer(extraValue);
        require(balanceOf(address(this)) >= extraValue, "Not enough ETH sent, required extraValue");
        uint value = w0 + 1;
        self.transfer(address(this).balance);
        Extra memory extra;
        extra.w = w0;
        self.extra(extra);
}

pragma solidity >=0.5.0;

contract CustomFallback {
        fallback() external payable {}
}
