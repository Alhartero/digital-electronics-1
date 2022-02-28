# Lab 2: Ales Pikhart

### 2-bit comparator

| **Dec. equivalent** | **B[1:0]** |**A[1:0]** | **B>A** | **B=A** | **B<A** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0 0 | 0 0 | 0 | 1 | 0 |
   | 1 | 0 0 | 0 1 | 0 | 0 | 1 |
   | 2 | 0 0 | 1 0 | 0 | 0 | 1 |
   | 3 | 0 0 | 1 1 | 0 | 0 | 1 |
   | 4 | 0 1 | 0 0 | 1 | 0 | 0 |
   | 5 | 0 1 | 0 1 | 0 | 1 | 0 |
   | 6 | 0 1 | 1 0 | 0 | 0 | 1 |
   | 7 | 0 1 | 1 1 | 0 | 0 | 1 |
   | 8 | 1 0 | 0 0 | 1 | 0 | 0 |
   | 9 | 1 0 | 0 1 | 1 | 0 | 0 |
   | 10 | 1 0 | 1 0 | 0 | 1 | 0 |
   | 11 | 1 0 | 1 1 | 0 | 0 | 1 |
   | 12 | 1 1 | 0 0 | 1 | 0 | 0 |
   | 13 | 1 1 | 0 1 | 1 | 0 | 0 |
   | 14 | 1 1 | 1 0 | 1 | 0 | 0 |
   | 15 | 1 1 | 1 1 | 0 | 1 | 0 |

1. Karnaugh maps for other two functions:

  ### *The K-map for the "greater than" function*
|           |           |         |  **A1**  |  **A0**  |           |
| :-:       | :-:       | :-:     | :-:         | :-:       | :-:       | 
|           |           | ***0 0*** | ***0 1***     | ***1 1***   | ***1 0***   | 
|           | ***0 0***   | 0   | 0           | 0         | 0         | 
| **B1,B0** |  ***0 1***  | **1**        | 0       | 0         |  0        |
|           | ***1 1***   | **1**        | **1**            | 0    | **1**         |
|           | ***1 0***   | **1**        | **1**            | 0         | 0     |


### *The K-map for the "less than" function*
|           |           |         |  **A1,A0**  |           |           |
| :-:       | :-:       | :-:     | :-:         | :-:       | :-:       | 
|           |           | ***0 0*** | ***0 1***     | ***1 1***   | ***1 0***   | 
|           | ***0 0***   | **0**   | 1           | 1         | 1         | 
| **B1,B0** |  ***0 1***  | **0**       | **0**       | 1         |  1        |
|           | ***1 1***   | **0**       | **0**            | **0**     | **0**          |
|           | ***1 0***   | **0**       | **0**            | 1         | **0**     |


2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

#### Simplified SoP form of the "greater than" function : 
#### GreaterSoP = B1./A1 + /A1./A0.B0 + /A0.B1.B0 
##### '/' -> negation 


#### Simplified PoS form of the "less than" function : 
#### LessPoS = (A1+A0).(/B1+/B2).(A1+/B1).(A1+/B0).(A0+/B1)
##### '/' -> negation 
### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx63**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0110"; 
        s_a <= "0011";        
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0110, 0011 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![Log](images/test.PNG)

3. Link to your public EDA Playground example:

   [https://www.edaplayground.com/x/DiaH](https://www.edaplayground.com/x/DiaH)
