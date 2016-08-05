using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace TraxStoreProject.App_Code
{
    public class TrimSongs
    {
        //public static void TrimWavFile(string inPath, string outPath, TimeSpan cutFromStart, TimeSpan cutFromEnd)
        //{
        //    using (WaveFileReader reader = new WaveFileReader(inPath))
        //    {
        //        using (WaveFileWriter writer = new WaveFileWriter(outPath, reader.WaveFormat))
        //        {
        //            int bytesPerMillisecond = reader.WaveFormat.AverageBytesPerSecond / 1000;

        //            int startPos = (int)cutFromStart.TotalMilliseconds * bytesPerMillisecond;
        //            startPos = startPos - startPos % reader.WaveFormat.BlockAlign;

        //            int endBytes = (int)cutFromEnd.TotalMilliseconds * bytesPerMillisecond;
        //            endBytes = endBytes - endBytes % reader.WaveFormat.BlockAlign;
        //            int endPos = (int)reader.Length - endBytes;

        //            TrimWavFile(reader, writer, startPos, endPos);
        //        }
        //    }
        //}

        //private static void TrimWavFile(WaveFileReader reader, WaveFileWriter writer, int startPos, int endPos)
        //{
        //    reader.Position = startPos;
        //    byte[] buffer = new byte[1024];
        //    while (reader.Position < endPos)
        //    {
        //        int bytesRequired = (int)(endPos - reader.Position);
        //        if (bytesRequired > 0)
        //        {
        //            int bytesToRead = Math.Min(bytesRequired, buffer.Length);
        //            int bytesRead = reader.Read(buffer, 0, bytesToRead);
        //            if (bytesRead > 0)
        //            {
        //                writer.WriteData(buffer, 0, bytesRead);
        //            }
        //        }
        //    }
        //}
        //public static void TrimMp3(string inputPath, string outputPath, TimeSpan? begin, TimeSpan? end)
        //{
        //    if (begin.HasValue && end.HasValue && begin > end)
        //        throw new ArgumentOutOfRangeException("end", "end should be greater than begin");

        //    using (var reader = new Mp3FileReader(inputPath))
        //    using (var writer = File.Create(outputPath))
        //    {
        //        Mp3Frame frame;
        //        while ((frame = reader.ReadNextFrame()) != null)
        //            if (reader.CurrentTime >= begin || !begin.HasValue)
        //            {
        //                if (reader.CurrentTime <= end || !end.HasValue)
        //                    writer.Write(frame.RawData, 0, frame.RawData.Length);
        //                else break;
        //            }
        //    }
        //}
    }
}