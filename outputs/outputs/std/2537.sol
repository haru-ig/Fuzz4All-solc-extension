pragma solidity ^0.8.0;
contract HelloWorld {
    mapping (address =&gt; uint[]) array1;
    uint[] array2;
    function add(uint a, uint b) public pure returns (uint) {
        uint z = add(a, b);
        uint[] memory s = array1[msg.sender];
        s[s.length] = z;
        require(array1[msg.sender].length + 1 == array2.length, "out of bounds");
        array2.length = array2.length + 1;
        for (uint i = 0; i &lt; array1[msg.sender].length; i++){
            array2[i] = add(array2[i], array1[msg.sender][i]);
        }
        return z;
    }
}
</pre>
</body>
</html>
