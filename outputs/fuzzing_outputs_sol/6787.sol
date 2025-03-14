pragma solidity ^0.8.0;
contract Contract1 {
    fallback payable public Fallback1() external {}
    fallback public Fallback2() external {}
}

contract Contract4 {
    fallback public Fallback5(address) external {}
}
contract Caller {
    function caller() public {
        Contract1 Contract1 = new Contract1();
        Memento Memento = new Memento();
        Memento.Fallback1();
        Memento.Fallback1.value(1 ether) (0x424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033424033);
        Contract1.Fallback(1 ether);
        Contract1.Fallback2.value(1 ether, 0);
        Contract1.Fallback1();
        Contract1.Fallback2.value(1, 0);
    }
}
