pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Unbounded;
with Ada.Strings.Wide_Unbounded;
with Ada.Strings.Wide_Wide_Unbounded;

package ContainsOnlyNumbers is

   function CheckString
     (StringExtern : in String)
      return Boolean;
   
   function CheckWideString
     (WideStringExtern : in Wide_String)
      return Boolean;
   
   function CheckWideWideString
     (WideWideStringExtern : in Wide_Wide_String)
      return Boolean;

   function CheckUnboundedString
     (UnboundedStringExtern : in Ada.Strings.Unbounded.Unbounded_String)
      return Boolean;
   
   function CheckUnboundedWideString
     (UnboundedWideStringExtern : in Ada.Strings.Wide_Unbounded.Unbounded_Wide_String)
      return Boolean;
   
   function CheckUnboundedWideWideString
     (UnboundedWideWideStringExtern : in Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
      return Boolean;
   
end ContainsOnlyNumbers;
