pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Unbounded;
-- with Ada.Strings.Wide_Unbounded;
-- with Ada.Strings.Wide_Wide_Unbounded;

package RemoveNumbers is

   function NormalString
     (StringExtern : in String)
      return String;
   
private
   
   NewString : Ada.Strings.Unbounded.Unbounded_String;

end RemoveNumbers;
