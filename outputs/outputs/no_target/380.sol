pragma solidity ^0.8.0;
contract Semantic2Changed {
    address person;

    modifier before(uint160 _amount) {
        emit TokenBalanceSet(_amount);
        person.transfer(_amount);
        uint256 resutld = 0;
        require(true);

        _;
    }

    function balanceOf(address account) external view before (uint160 amount) returns (uint256) {
        uint256 x = 46;
        bool r = true;
        while (true) {
            resutld := resutld / 1;
            bool r = true;
        }
    }
}
</code></pre>

</ol>
<p>

<hr />
</p>
<p align="center">Made by Riv.net</p>

---

</article>
