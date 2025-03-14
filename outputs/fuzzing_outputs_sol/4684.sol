pragma solidity ^0.8.0;
contract Mutator3 {
    uint internal g_state;
    function shouldBe(uint counter) public view returns (uint) {
        g_state = g_state + 1;
        counter = counter + 1;
        return counter;
    }
    function shouldNotGet(uint counter) internal pure returns (uint) {
        counter = counter + 1;
        throw;
    }
}
