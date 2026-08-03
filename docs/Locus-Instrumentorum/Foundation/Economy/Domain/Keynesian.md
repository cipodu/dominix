# Keynesian Theory

> ...

**Keynesian Theory**, in technical economic terms, refers to a macroeconomic framework originally developed by **John Maynard Keynes** in *The General Theory of Employment, Interest and Money (1936)*. It emphasizes **aggregate demand (AD)** as the principal driver of output and employment in the short run, especially during periods of economic slack.

### Core Technical Components of Keynesian Theory:

#### 1. **Aggregate Demand Determines Output (Y)**

Keynes rejects Say’s Law (supply creates its own demand). Instead, he posits that **effective demand**—the level of demand for goods and services at which firms are willing to produce—is what determines the level of output and employment.

Formally:

$$
Y = C(Y - T) + I(r) + G + NX
$$

Where:

* $Y$: national income (output),
* $C$: consumption, a function of disposable income ($Y - T$),
* $I$: investment, a decreasing function of the real interest rate $r$,
* $G$: government spending (exogenous),
* $NX$: net exports (often omitted in closed economy models),
* $T$: taxes (can be fixed or endogenous).

#### 2. **Consumption Function**

Consumption is modeled as a linear function:

$$
C = C_0 + c(Y - T)
$$

Where:

* $C_0$: autonomous consumption,
* $c$: marginal propensity to consume (MPC), $0 < c < 1$.

#### 3. **Investment and Interest Rate: IS Curve**

Investment $I$ is sensitive to the interest rate:

$$
I = I_0 - b \cdot r
$$

This forms part of the **IS curve**, which captures goods market equilibrium:

$$
Y = C(Y - T) + I(r) + G
\Rightarrow \text{IS: } Y = f(r)
$$

#### 4. **Liquidity Preference and Money Market: LM Curve**

Keynes introduced **liquidity preference** to model the demand for money:

$$
M^d = L(Y, r)
$$

Where:

* $M^d$: demand for money,
* $L_Y > 0$: transactions demand (positively related to income),
* $L_r < 0$: speculative demand (negatively related to interest rate).

Money supply $M^s$ is set by the central bank. The **LM curve** satisfies:

$$
M^s = L(Y, r) \Rightarrow r = g(Y)
$$

#### 5. **Multiplier Effect**

Increases in government spending or investment cause an amplified increase in output via the **Keynesian multiplier**:

$$
k = \frac{1}{1 - c}
\Rightarrow \Delta Y = k \cdot \Delta G
$$

This operates under the assumption of idle resources and price rigidity.

#### 6. **Price and Wage Stickiness**

Keynes assumed **nominal rigidities**, such as sticky wages and prices, implying that markets do not clear instantly, and involuntary unemployment can persist.

#### 7. **Equilibrium with Unemployment**

Unlike classical models where labor market clears at full employment:

$$
W/P = MPN(L)
$$

Keynes shows equilibrium can occur **below full employment**, due to insufficient aggregate demand.

#### 8. **Paradox of Thrift**

Increased saving reduces consumption, lowering aggregate demand and possibly decreasing total savings in equilibrium—a counterintuitive outcome.

#### 9. **Policy Implications**

* **Fiscal Policy** (via $G$ or $T$) is potent in managing demand.
* **Monetary Policy** may be ineffective in a liquidity trap ($r \to 0$, $dL/dr \to \infty$).
* Stabilization policies are essential to maintain full employment.

### 📌 Formal Summary: IS-LM Model (Closed Economy, Short Run)

$$
\begin{cases}
Y = C_0 + c(Y - T) + I_0 - b r + G \quad \text{(IS)} \\
M/P = L(Y, r) \quad \text{(LM)}
\end{cases}
$$

Solving this system yields the short-run equilibrium values of $Y$ and $r$. Generalizations include the **AD-AS framework**, **Phillips Curve**, and extensions into **New Keynesian DSGE models**.

Let me know if you want the open economy case (Mundell-Fleming), dynamic extensions (Keynesian cross in discrete or continuous time), or New Keynesian refinements (price stickiness via Calvo pricing).

## References

* [Keynesian Theory](https://en.wikipedia.org/wiki/Keynesian_economics)
* [Business Cycles Explained: Keynesian Theory](https://www.youtube.com/watch?v=g_647R_vUVc)
* [Keynes, J. M. (1930). A Treatise on Money. Macmillan.](https://www.notion.so/Keynes-J-M-1930-A-Treatise-on-Money-Macmillan-317598edb790802fa46dd287bea3619a?source=copy_link)
