pragma solidity ^0.8.0;
contract MyContract {
    bool b4;
    event ChangeToFalse(uint x);
    modifier NotTrue {
        require(b4!= true,"AssertionFailed");
        _;
    }
    function bar() public NotTrue {
        b4 = false;
    }
}
```
<br />
<br />

<div id="disclaimer">
  <b>Note</b><br>
  This guide is a work in progress.
</div>

:::

::: tab 4.8.2 Migrating to Remix IDE

::: tip
1. Use [Remix IDE](https:
2. Go to File | Settings | Edit Network.
3. Set the Network to Rinkeby.

:::

1. Create a contract and initialize it with false.
   ```.javascript
   (async () => {
        const response = await fetch('http://localhost:7545/createMyContract', {
          method: 'GET',
          headers: {"Content-Type": "application/json"}
        });
        const result = await response.json();
        console.log(result);
        const myContract = await ethers.getContractAt('MyContract', result.contract_address, {
          signer: account
        });
   })();
   ```
2. Call the contract's bar function.
   ```.javascript
   await myContract.callStatic.bar();
   ```
3. Check if the change occurred.
   ```.javascript
   (async () => {
        const response = await fetch('http:
          method: 'GET',
          headers: {"Content-Type": "application/json"}
        });
        const result = await response.json();
        console.log(result);
        console.log(result.status);
   })();
   ```

:::

::: tab 4.8.3 Migrating to Remix Develop

::: tip
1. Use [Remix IDE](https:
2. Go to File | Settings | Edit Network.
3. Set the Network to Rinkeby.

:::

<br />

1. Create a contract and initialize it with false.
   ```.javascript
   (async () => {
        const response = await fetch('http://localhost:7545/createMyContract', {
          method: 'GET',
          headers: {"Content-Type": "application/json"}
        });
        const result = await response.json();
        console.log(result);
        const myContract = await ethers.getContractFactory('MyContract').connect(account
