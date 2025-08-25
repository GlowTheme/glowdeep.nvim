# ---------- Literals ----------
"this is a string"  # String
"a"  # Character (in Python not distinct, but some themes highlight 1-char strings as Character)
42  # Number
3.14  # Float
True, False  # Boolean

# ---------- Identifiers / Functions ----------
variable_name = 10  # Identifier


def my_function(x):  # Function (definition name)
    return x + 1


my_function(variable_name)  # Function (call)

# ---------- Statements / Flow control ----------
if variable_name > 0:  # Conditional (if/elif/else)
    for i in range(3):  # Repeat (for/while)
        pass
else:
    raise ValueError("oops")  # Exception

# ---------- Keywords / Operators ----------
not True and False  # Operator (not, and, or)


class MyClass:  # Keyword (class, def, return, etc.)
    pass


# ---------- Labels (Python doesn’t have labels, but goto-like in other langs) ----------
# In Python, 'break' and 'continue' often fall under Label/Repeat in syntax groups.
while True:
    break  # Label/Repeat

# ---------- Preprocessor-ish (Python has none) ----------
# In C you’d see #include, #define, etc.
# In Python, import behaves like Include/PreProc.
import math  # Include / PreProc
from os import path as p  # Include

# ---------- Types ----------
x: int = 5  # Type / Typedef / StorageClass (annotation highlights as type)
y: list[str] = []  # Type with structure

# ---------- Special ----------
print(__name__)  # Special (dunder/builtins often land here)

# ---------- Underlined ----------
# Not syntax-driven — you only see this if your theme explicitly applies underline
# Example: mark TODOs or manual highlight.
