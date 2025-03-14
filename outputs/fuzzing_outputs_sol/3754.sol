pragma solidity ^0.8.0;
contract Example12 {
    function example12() public pure {
        (int i) = 0;
    }
}
contract Example13 is Example10, Example12 {
    Receive receiveEther();
    receiveEther public receiveEtherWithoutFallback;

    receiveEther public EtherTransferFallback(uint wad);
    EtherTransferFallback public EtherTransferFallbackWithoutFallback;

    receiveEther public function EtherTransferFallbackWithFallback(uint wad) public payable receiveEtherWithoutFallback { }
}
contract Example14 is Example10, Example12 {
    receiveEther public receiveEtherWithoutFallback;
    Receive public receiveEtherWithoutFallbackAndNotDeclared;

    receiveEther public EtherTransferFallback(uint wad);
    EtherTransferFallback public EtherTransferFallbackWithoutFallback;

    receiveEther public function EtherTransferFallbackWithFallback(uint wad) public payable receiveEtherWithoutFallback { }
}
