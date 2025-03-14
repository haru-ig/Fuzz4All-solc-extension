pragma solidity ^0.8.0;
contract NewY {
    uint256 public constant x = 123;
    uint256 public constant y = 60;
    function n(uint256 k) public returns(uint256) {

        k = x / 1 + x*y*k / (2*x) - y + x - x / 2;

        k = k / x + x*y/  (x+1) - 1;

        while(1!= k) {
            k = k / x + x*y*k / (2*x) - k + y;
        }
        return x;
    }
}
address gatoYTokenContract = 0x1Eb379aC8742a164Ed784dABE7B259445EbF520f;
uint256 private constant y = 1;
contract TestY {

    function main() public {
        gatoYTokenContract.approve(address(this),y);
        NewY yContractInstance = NewY(address(this));
        uint256 r1 = yContractInstance.n(1);
        require(r1 == x);
    }

}
