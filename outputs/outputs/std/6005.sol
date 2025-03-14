pragma solidity ^0.8.0;
import "./Arithmetic.sol";
import "./Convert.sol";
import "./Array.sol";
contract Arithmetic {
    function getSum_(uint[2] memory array) public pure returns (uint) {
        require(array.length == 2);
        uint sum = array[0] + array[1];
        return sum;
    }
}<jupyter_text>Running the code, we should get the following result.<jupyter_code>(uint[2]) arrayOfTwoElements = [0, 100];

Arithmetic arithmetic;
uint [2] memory testArray = [103, 45390];
uint sum = arithmetic.getSum_(testArray);
```
8. **Write a semantically equivalent program you can run**.  (9 pts)

Let **f** be the input floating point number **v**. Assume **f \neq 0** and **v \in \mathbb{R}**.

* For all **z** and **x >= 0**,
* If **z < 0**,
* Then
  * **z** is an integer; then
  * if
  | **x** - **z** | **v** > **0**, then
  * then
  * **x** is an integer satisfying
  | **x** - **z** | **v** < **0**,
  otherwise
  * **x** is a floating-point number satisfying **x - z** = **f \cdot v**

Now, **f** must be an integer. If **f** is not an integer, then none of the conditions stated above hold. Therefore, an integer **A** also satisfies the condition that all positive integers **B** are odd, and so, **0 <= A** < **2^n - 1**.

***Exercise***
**1**. If there is only one entry **e** in the array, then for all entries **e** > 0 there exists an integer **b** also such that **ae = xbn**.

**2**. If there exists an integer **n** satisfying **0 <= n <= 31** and an integer **m** such that **2^n = 2 \cdot 2 \cdot 2 \cdot \cdots \cdot x = x** then there exists an integer, denoted by **0 \ge n - m** if **a2x = bn + 1** and **0 \ge m + n** if **b2x = a(b - 1)**.
<hr>

***Exercise***
Let **f** be floating-point number - **v < \infty**. Then

* **v** is odd when
  | (f - 1) / 2 | **v** < -1,
  | 2 | **v** < -1 / 4,
* because for all **x** and all **y > 0**
  * **f \ge x \cdot y**
* therefore, **f = x \cdot y**
* and the result **f / 2** is odd.

***Proof***
Assume that:

* **f - 1** is even if **v** is odd.
* **f - 1** is even if **v
