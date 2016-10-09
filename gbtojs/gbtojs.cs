using System;
using System.IO;

public static class Program
{
	static void Main(string[] args)
	{
		if(args.Length == 0 || args[0] == "?" || args[0] == "help")
		{
			Console.WriteLine("usage:\ngbtojs source.gb output.js");
			return;
		}
		var bytes = File.ReadAllBytes(args[0]);
		var base64 = Convert.ToBase64String(bytes);
		File.WriteAllText(args[1], string.Format("romdata = \"{0}\";", base64));
		Console.WriteLine("success");
	}
}