pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Unbounded;
with Ada.Strings.Wide_Unbounded;
with Ada.Strings.Wide_Wide_Unbounded;

package ContainsOnlyNumbers is

   function NormalString
     (StringExtern : in String)
      return Boolean;
   
   function WideString
     (WideStringExtern : in Wide_String)
      return Boolean;
   
   function WideWideString
     (WideWideStringExtern : in Wide_Wide_String)
      return Boolean;

   function UnboundedString
     (UnboundedStringExtern : in Ada.Strings.Unbounded.Unbounded_String)
      return Boolean;
   
   function UnboundedWideString
     (UnboundedWideStringExtern : in Ada.Strings.Wide_Unbounded.Unbounded_Wide_String)
      return Boolean;
   
   function UnboundedWideWideString
     (UnboundedWideWideStringExtern : in Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
      return Boolean;
   
end ContainsOnlyNumbers;
