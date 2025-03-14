pragma solidity ^0.8.0;
contract SolveModul
{
    function test() public pure returns(uint) {
        uint[2] memory array = new uint[](2);
        array[0] = 3752998;
        array[1] = 123483;
        return array[0] + array[1];
    }
}




pragma solidity ^0.8.0;
contract Mainnet
{
    assembly {

        let c = 0xefc3c5e3150d63d930c86e1c0379e225b8b27f86;

        let d = 0x66d2e8e4629b79b7ff3535c7b484fd1b5010cf47;

        c = create(0x21858c6027a07282f15793fb3068722e08703685, c, 2);
        d = create(0x21858c6027a07282f15793fb3068722e08703685, d, 3);

        c.test();
        d.test();

        c.test2();

        uint result = call(d, 886);

        x := d.test();
        y := d.test2();

    }
  }

  function call(address callTargetAddress, uint argument) internal returns(uint) {
    assembly {

      call(add(argument, add(callTargetAddress, 0x36)), 0, mload(0x40))
    }
  }


  function start(
