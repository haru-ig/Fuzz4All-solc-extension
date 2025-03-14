pragma solidity ^0.8.0;
contract ModifiedCaller
{
    function testCaller(
        bytes32[][][] memory b,
        bytes32 a1, uint a2, address b1,
        bytes32 a1i, uint a2i, bytes32 d
    ) public {
    }
}
contract Program
{
    mapping(uint => uint) public x;
    uint xarr1[100];
    uint xarr2[100];
    function f(uint n) public
    {
        if (n == 1){
        ModifiedCaller mc;
        mc.testCaller(xarr1, xarr2, xarr1[2], xarr1[3], xarr1[4], xarr1[5], xarr1[6]);
        }else if (n == 2){
        ModifiedCaller mc;
        bytes32[][][] args;
        args[0] = xarr1; args[1] = xarr2; args[2] = xarr1[1]; args[3] = xarr1[2]; args[4] = xarr1[3]; args[5] = xarr1[4]; args[6] = xarr1[5]; args[7] = xarr1[6];
        args[222] = xarr2; xarr2 = xarr1; xarr1 = args;
        }else if (n == 3){
        ModifiedCaller mc;
        bytes32[][][] args;
        args[0] = xarr1; args[1] = xarr2;
        args[2] = xarr1[2]; args[3] = xarr1[3]; args[4] = xarr1[4]; args[5] = xarr1[5]; args[6] = xarr1[6]; xarr1 = args;
        }
    }
}
</pre>
    </td>
    </tr>
    <tr>
      <td>7/14/2022</td>
      <td>5:08 PM</td>
      <td>https:
      <td>
          <pre>
When a function accepts a dynamically sized array of bytes as a parameter instead of accepting a single-dimensional array, the compiler seems unable to use that array
